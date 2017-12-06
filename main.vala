using Gtk;

namespace Calculator
{
    class App : Gtk.Window
    {
        public App()
        {
            var button = new Button.with_label("Click me!");
            add(button);

            button.clicked.connect(on_click);
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

            app.destroy.connect(Gtk.main_quit);

            Gtk.main();

            return 0;
        }
    }
}
