package com.vastika.training.java.cms.controllers;

import com.vastika.training.java.cms.models.Teacher;
import com.vastika.training.java.cms.repositories.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.List;


@Controller
public class TeacherController {
    @Autowired
    private TeacherRepository teacherRepository;

    @RequestMapping(value = "/teachers", method = RequestMethod.GET)
    public String index(Model model) {
        List<Teacher> teachers = this.teacherRepository.findAll();
        model.addAttribute("teachers",teachers);
        return "teachers";
    }
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String getInfo(Model model, @RequestParam("id") int id){
        Teacher teacher = this.teacherRepository.getOne(id);
        model.addAttribute("teacher",teacher);
        return "teacherInfo";
    }
    @RequestMapping(value = "/teachers/{id}/edit",method = RequestMethod.GET)
    public String getUpdateForm(Model model, @PathVariable("id") int id){
       Teacher teacher = this.teacherRepository.getOne(id);
       model.addAttribute("formType","Update");
       model.addAttribute("teacher",teacher);
       return "teacherForm";
    }
    @RequestMapping(value = "/teachers/add",method = RequestMethod.GET)
    public String getAddForm(Model model){
        Teacher teacher = new Teacher();
        model.addAttribute("formType","Add");
        model.addAttribute("teacher",teacher);
        return "teacherForm";
    }
    @RequestMapping(value = "/teachers", method = RequestMethod.POST)
    public String upsertTeacher(@ModelAttribute("teacher") Teacher teacher) {
        this.teacherRepository.save(teacher);

        return "redirect:/teachers";
    }
    @RequestMapping(value = "/teachers/{id}/delete", method = RequestMethod.GET)
    public String deleteStudentRecord(@PathVariable int id) {
        this.teacherRepository.deleteById(id);
        return "redirect:/teachers";
    }









}
