package org.hnist.controller;


import org.hnist.model.Role;
import org.hnist.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class RoleController {
    @Autowired  //实例 UserService
    private RoleService roleService;

    @RequestMapping(value = "/jsp/roleCtl")
    public ModelAndView roleList(){
        ModelAndView modelAndView =new ModelAndView();
        List<Role> list = roleService.getAllRole();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("/jsp/all-admin-dataform.jsp");
        System.out.println(list);
        return modelAndView;
    }


    @RequestMapping(value = "/jsp/Add")// @Valid     BindingResult result
    public String roleAdd(@Valid  Role role, BindingResult result, Model model){
        if(result.hasErrors()){
            List<ObjectError> msgList = result.getAllErrors();
            StringBuilder stringBuilder =new StringBuilder();
            for (ObjectError objectError : msgList) {
                stringBuilder.append(objectError.getDefaultMessage()+",");
            }
            stringBuilder.append("不能为空");
            model.addAttribute("msg",stringBuilder.toString());
            return "/jsp/add.jsp";
        }
        roleService.save(role);
        return "redirect:/jsp/roleCtl";
    }
    @RequestMapping(value = "/jsp/saveUp",method = RequestMethod.POST)
    public String roleSave(Role role){
        roleService.saveUp(role);
        return "redirect:/jsp/roleCtl";
    }
    @RequestMapping("/jsp/remove/{roleId}")
    public String roleRemove(@PathVariable("roleId") Integer id){
        roleService.remove(id);
        return "redirect:/jsp/roleCtl";
    }

    @RequestMapping("/jsp/update")
    public ModelAndView roleUp( Integer roleId){
        ModelAndView modelAndView = new ModelAndView();
        Role role =roleService.updateRole(roleId);
        modelAndView.addObject("role",role);
        modelAndView.setViewName("/jsp/addUpdate.jsp");
        return modelAndView;
    }


}
