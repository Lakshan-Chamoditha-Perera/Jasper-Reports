package com.example.jasper.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

public class CustomerReportsFormController {

    @FXML
    private AnchorPane mainPanel;

    @FXML
    void homeBtnOnAction(ActionEvent event) throws IOException {
        mainPanel.getChildren().clear();
        mainPanel.getChildren().add(FXMLLoader.load(getClass().getResource("/com/example/jasper/view/MainForm.fxml")));

    }

    @FXML
    void printCustomerListByCityOnAction(ActionEvent event) {


    }


    @FXML
    void printCustomerListOnAction(ActionEvent event) {

    }

}
