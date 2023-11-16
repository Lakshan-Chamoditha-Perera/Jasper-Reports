package com.example.jasper.controller;

import com.example.jasper.db.DbConnection;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.AnchorPane;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

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
    void printCustomerListOnAction(ActionEvent event) throws JRException, SQLException {
        InputStream resourceAsStream = getClass().getResourceAsStream("../report/CustomerList2.jrxml");
        JasperDesign load = JRXmlLoader.load(resourceAsStream);
        JasperReport jasperReport = JasperCompileManager.compileReport(load);

        JasperPrint jasperPrint =
                JasperFillManager.fillReport(
                        jasperReport, //compiled report
                        null,
                        DbConnection.getInstance().getConnection() //database connection
                );

        JasperViewer.viewReport(jasperPrint, false);
    }

}
