package com.epam.electives.controller;

import com.epam.electives.dto.GetCourseRequest;
import com.epam.electives.dto.PageDto;
import com.epam.electives.model.Course;
import com.epam.electives.services.CourseMainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController  {

    @Autowired
    CourseMainService courseMainService;
//
//    @RequestMapping("/courses.main")
//    public ModelAndView courses(@RequestParam int n){
//        ModelAndView modelAndView = new ModelAndView("courses.main");
//        modelAndView.addObject("courses", courseMainService.getN(n));
//        return modelAndView;
//    }

    @RequestMapping(value = "/courses.main", method = RequestMethod.GET)
    public ModelAndView courses(@RequestBody(required = false) GetCourseRequest request){
        ModelAndView modelAndView = new ModelAndView("courses.main");
        if(request == null) {
            request = new GetCourseRequest();
            request.setStart(0);
            request.setLength(2);
        }
        PageDto<Course> courses = courseMainService.getPart(request);
//        courseMainService.getAll().size();
        modelAndView.addObject("courses", courses.getData());
        modelAndView.addObject("numOfPages", courses.getRecordsTotal()/2);
        return modelAndView;
    }


    @ResponseBody
    @RequestMapping(value = "/part", method = RequestMethod.POST)
    public PageDto<Course> mainAllNews(@RequestBody GetCourseRequest request){
//        ModelAndView modelAndView = new ModelAndView("course.main");
//        modelAndView.addObject("course", courseMainService.getPart(request));
        PageDto<Course> courses = courseMainService.getPart(request);
        return courses;
        //return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/addCourse", method = RequestMethod.POST)
    public Course addNews(@RequestBody Course courses){

        // temp appId, later take it from HttpRequest request
//        ModelAndView modelAndView = new ModelAndView("addNews");
//        modelAndView.addObject("news", newsMainService.saveOrUpdate(news));
        courseMainService.saveOrUpdate(courses);
        return courses;
        //return modelAndView;
    }
}
