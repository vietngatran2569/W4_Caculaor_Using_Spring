package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CaculatorController {
    @GetMapping("")
    public String caculator() {
        return "index";
    }

    @PostMapping("/caculate")
    public ModelAndView caculate(@RequestParam("number1") double number1, @RequestParam("number2") double number2, @RequestParam("caculator") String caculator) {
        String result = "";
        switch (caculator) {
            case "+":
                result = number1 + number2 + "";
                break;
            case "-":
                result = number1 - number2 + "";
                break;
            case "*":
                result = number1 * number2 + "";
                break;
            case "/":
                if (number2 == 0) {
                    result = "not devide 0";
                } else {
                    result = number1 / number2 + "";
                }
        }
        ModelAndView modelAndView=new ModelAndView("index","result",result);
        modelAndView.addObject("number1",number1);
        modelAndView.addObject("number2",number2);
        return modelAndView;
    }
}
