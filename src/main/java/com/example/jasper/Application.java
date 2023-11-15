package com.example.jasper;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class Application extends javafx.application.Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Application.class.getResource("view/MainForm.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setScene(scene);
        stage.show();
        stage.setTitle("Jasper Reports");
        stage.getIcons().add(new javafx.scene.image.Image("/com/example/jasper/assets/icon.png"));
    }

    public static void main(String[] args) {
        launch();
    }
}