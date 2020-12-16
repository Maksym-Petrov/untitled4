import App.User;
import io.javalin.Javalin;


import io.javalin.http.Context;


import java.util.Collections;

public class Main {
    public static User user;
    public static Data data;
    public static void main(String[] args) {
       user = new User() ;
        data = new Data();
        Javalin javalin = Javalin.create().start(2063);
        javalin.get("/", ctx ->{
        ctx.render("index.jte");
        });
        javalin.get("/login", ctx ->{
            ctx.render("outor.jte");
        });
        javalin.get("/registration", ctx ->{
            ctx.render("regist.jte");
        });
         javalin.post("/api/auth/",ctx ->{
             System.out.println(ctx.formParam("login"));
             System.out.println(ctx.formParam("pass"));
             String login = ctx.formParam("login");
             String pass = ctx.formParam("pass");

              data.connect(login);
             if (data.auth(login,pass)) {
                 System.out.println("Good");
                 ctx.cookie("login",login);
                 ctx.redirect("/home");
             }else {
                 System.out.println("Bad");
             }

         });
        javalin.post("/api/reg/",ctx ->{
            String login = ctx.formParam("login");
            String pass = ctx.formParam("pass");
            String repass = ctx.formParam("repass");
            if (pass.equals(repass)){
                data.connect(login);
                data.register(login,pass);
                ctx.render("index.jte");
                ctx.redirect("/");
            }else {
                System.out.println("sss");
            }


        });
        javalin.post("/api/transfer/",ctx ->{
            String id = ctx.formParam("id");
            String balance = ctx.formParam("sum");


            if (data.getid("login") != Integer.valueOf(id) &&
                    data.getBalance(ctx.cookie("login"))>= Double.valueOf(balance)){
               data.transfer(data.getid(ctx.cookie("login")),
                       Integer.valueOf(id),
                       data.getBalance(ctx.cookie("login")),
                       Double.valueOf(balance));

               ctx.redirect("/home");
            }


        });

         javalin.get("/home", Main::renderMainPage);
    }
    private static void renderMainPage (Context ctx){
        User user = new User();
        user.id = data.getid(ctx.cookie("login"));
        user.balance= data.getBalance(ctx.cookie("login"));
        ctx.render("menu.jte", Collections.singletonMap("user",user));
    }
}
