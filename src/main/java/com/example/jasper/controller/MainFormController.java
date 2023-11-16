package com.example.jasper.controller;

import com.jfoenix.controls.JFXButton;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Alert;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;
import java.util.regex.Pattern;

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

    public void btnSaveOnAction(ActionEvent actionEvent) {
        boolean isCustomerValidated = validateCustomer();
        if (isCustomerValidated) {
            new Alert(Alert.AlertType.INFORMATION, "Customer Saved Successfully!").show();
        }
    }

    private boolean validateCustomer() {
        //validate customer id //C001
        String idText = txtId.getText();
//        boolean isCustomerIDValidated = Pattern.compile("[C][0-9]{3,}").matcher(idText).matches();
        boolean isCustomerIDValidated = Pattern.matches("[C][0-9]{3,}", idText);
        if (!isCustomerIDValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid Customer ID!").show();
            return false;
        }


        //validate customer title
        String titleText = txtTitle.getText();
//        boolean isCustomerTitleValidated = Pattern.compile("Mr|Mrs|Miss").matcher(titleText).matches();
        boolean isCustomerTitleValidated = Pattern.matches("Mr|Mrs|Miss", titleText);
        if (!isCustomerTitleValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid customer title").show();
            return false;
        }

        //validate cutomer name
        String nameText = txtName.getText();
//        boolean isCustomerNameValidated = Pattern.compile("[A-Za-z]{3,}").matcher(nameText).matches();
        boolean isCustomerNameValidated = Pattern.matches("[A-Za-z]{3,}", nameText);
        if (!isCustomerNameValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid customer name").show();
            return false;
        }

        //validate customer address
        String addressText = txtAddress.getText();
//        boolean isCustomerAddressValidated = Pattern.compile("[A-Za-z0-9]{3,}").matcher(addressText).matches();
        boolean isCustomerAddressValidated = Pattern.matches("[A-Za-z0-9/.\\s]{3,}", addressText);
        if (!isCustomerAddressValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid customer address").show();
            return false;
        }

        //validate customer city
        String cityText = txtCity.getText();
//        boolean isCustomerCityValidated = Pattern.compile("[A-Za-z]{3,}").matcher(cityText).matches();
        boolean isCustomerCityValidated = Pattern.matches("[A-Za-z]{3,}", cityText);
        if (!isCustomerCityValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid customer city").show();
            return false;
        }

        //validate customer province
        String provinceText = txtProvince.getText();
//        boolean isCustomerProvinceValidated = Pattern.compile("[A-Za-z]{3,}").matcher(provinceText).matches();
        boolean isCustomerProvinceValidated = Pattern.matches("[A-Za-z]{3,}", provinceText);
        if (!isCustomerProvinceValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid customer province").show();
            return false;
        }


        //validate customer postal code
        String postalCodeText = txtPostalCode.getText();
//        boolean isCustomerPostalCodeValidated = Pattern.compile("[0-9]{5}").matcher(postalCodeText).matches();
        boolean isCustomerPostalCodeValidated = Pattern.matches("[0-9]{5}", postalCodeText);
        if (!isCustomerPostalCodeValidated) {
            new Alert(Alert.AlertType.ERROR, "Invalid customer postal code").show();
            return false;
        }
        return true;

    }

    public void txtSearchOnAction(ActionEvent actionEvent) {

    }

    public void homeBtnOnAction(ActionEvent actionEvent) throws IOException {
        mainPanel.getChildren().clear();
        mainPanel.getChildren().add(FXMLLoader.load(getClass().getResource("../view/MainForm.fxml")));
    }
}
