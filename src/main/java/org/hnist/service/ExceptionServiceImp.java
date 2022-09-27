package org.hnist.service;

import org.hnist.exception.MyException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("ExceptionService")
@Transactional
public class ExceptionServiceImp implements ExceptionService  {
    public void show() throws MyException {
        throw new MyException();
    }
}
