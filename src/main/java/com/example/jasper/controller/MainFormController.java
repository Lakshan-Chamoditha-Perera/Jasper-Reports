package com.example.jasper.controller;

import com.example.jasper.db.DbConnection;
import com.jfoenix.controls.JFXButton;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import net.sf.jasperreports.engine.*;

import java.io.IOException;

public class MainFormController {


    @FXML
    private JFXButton btnSave;

    @FXML
    private AnchorPane childPanel;

    @FXML
    private DatePicker cmbDob;

    @FXML
    private AnchorPane mainPanel;

    @FXML
    private TextField txtAddress;

    @FXML
    private TextField txtCity;

    @FXML
    private TextField txtId;

    @FXML
    private TextField txtName;

    @FXML
    private TextField txtPostalCode;

    @FXML
    private TextField txtProvince;

    @FXML
    private TextField txtSearch;

    @FXML
    private TextField txtTitle;


    @FXML
    void customerButtonOnAction(ActionEvent event) throws IOException {
        childPanel.getChildren().clear();
        childPanel.getChildren().add(FXMLLoader.load(getClass().getResource("../view/CustomerReportsForm.fxml")));
    }

    public void btnSaveOnAction(ActionEvent actionEvent) throws JRException {

    }

    public void txtSearchOnAction(ActionEvent actionEvent) {

    }

    public void homeBtnOnAction(ActionEvent actionEvent) throws IOException {
        mainPanel.getChildren().clear();
        mainPanel.getChildren().add(FXMLLoader.load(getClass().getResource("../view/MainForm.fxml")));
    }
}
