package org.hnist.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.read.listener.ReadListener;
import com.mchange.v1.util.ListUtils;
import org.hnist.dao.UserMapper;
import org.hnist.model.User;

import java.util.ArrayList;
import java.util.List;

public class UserListener extends AnalysisEventListener<User> {
    /**
     * 每隔5条存储数据库，实际使用中可以3000条，然后清理list ，方便内存回收
     */
    private static final int BATCH_COUNT = 5;
    List<User> list = new ArrayList<User>();

    private UserMapper userMapper;

    public UserListener(UserMapper userMapper){
        this.userMapper=userMapper;
    }


    //  一行行读取excel内容
    @Override
    public void invoke(User user, AnalysisContext analysisContext) {
        List<User> user1 = userMapper.getUser1();
        System.out.println("解析到一条数据"+user.toString());
        boolean flag=true;
        for (User user2 : user1) {
            if(user2.getEmail().equals(user.getEmail())){
                flag = false;
                break;
            }
        }
        if (flag){
            list.add(user);
        }

        // 达到BATCH_COUNT了，需要去存储一次数据库，防止数据几万条数据在内存，容易OOM
        if (list.size() >= BATCH_COUNT) {
            saveData();
            // 存储完成清理 list
            list.clear();
        }
    }

    /**
     * 所有数据解析完成了 都会来调用
     *
     * @param context
     */
    @Override
    public void doAfterAllAnalysed(AnalysisContext context) {
        // 这里也要保存数据，确保最后遗留的数据也存储到数据库
        saveData();
        System.out.println("所有数据解析完成！");
    }

    /**
     * 加上存储数据库
     */
    private void saveData() {
        System.out.println(list.size()+"条数据，开始存储数据库！");
        for(int i=0;i<list.size();i++){
            userMapper.read(list.get(i));
        }
        System.out.println("存储数据库成功！");
    }
}