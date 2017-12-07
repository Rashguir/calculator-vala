using Gtk;

namespace Calculator
{
    class App : Gtk.Window
    {
        public App()
        {
            this.title = "My Vala Calculator";
            this.window_position = Gtk.WindowPosition.CENTER;
            this.destroy.connect(Gtk.main_quit);
            this.set_default_size(350, 270);


            var button7 = new Button.with_label("7");
            var button8 = new Button.with_label("8");
            var button9 = new Button.with_label("9");
            // var buttonDivide = new Button.with_label("/");
            // var button4 = new Button.with_label("4");
            // var button5 = new Button.with_label("5");
            // var button6 = new Button.with_label("6");
            // var buttonMultiply = new Button.with_label("*");
            // var button1 = new Button.with_label("1");
            // var button2 = new Button.with_label("2");
            // var button3 = new Button.with_label("3");
            // var buttonPlus = new Button.with_label("+");
            // var button0 = new Button.with_label("0");
            // var buttonDot = new Button.with_label(".");
            // var buttonMinus = new Button.with_label("-");
            // var buttonResult = new Button.with_label("=");
            // add(button7);
            // add(button8);
            // add(button9);
            // add(buttonDivide);
            // add(button4);
            // add(button5);
            // add(button6);
            // add(buttonMultiply);
            // add(button1);
            // add(button2);
            // add(button3);
            // add(buttonPlus);
            // add(button0);
            // add(buttonDot);
            // add(buttonMinus);
            // add(buttonResult);

            // the box
            Gtk.Box box = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 0);
            box.pack_start(button7, false, false, 1);
            box.pack_start(button8, false, false, 1);
            box.pack_start(button9, false, false, 10);

            button7.clicked.connect(on_click);
        }

        private void on_click(Gtk.Button button)
        {
            stdout.printf("Ouch!\n");
        }

        public static int main(string[] args)
        {
            Gtk.init(ref args);

            var app = new App();
            app.show_all();

            Gtk.main();

            return 0;
        }
    }
}
