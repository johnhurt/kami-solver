/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rookandpawn.kami.ui;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executors;

import javax.imageio.ImageIO;
import javax.swing.JFileChooser;
import javax.swing.SwingUtilities;
import javax.swing.filechooser.FileFilter;

import com.google.common.eventbus.AsyncEventBus;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.SubscriberExceptionContext;
import com.google.common.eventbus.SubscriberExceptionHandler;
import com.rookandpawn.kami.KamiSolverPresenter;

/**
 *
 * @author kguthrie
 */
public class KamiSolverMain extends javax.swing.JFrame
    implements KamiSolverView {

  private final JFileChooser fileChooser = new JFileChooser();
  private final HasClickHandlers openButton = new HasClickHandlers();
  private final HasClickHandlers solveButton = new HasClickHandlers();
  private final HasInteger solutionLength;

  private final HasImageSelectedHandlers imageSelector
      = new HasImageSelectedHandlers();

  /**
   * Creates new form KamiSolverMain
   */
  public KamiSolverMain() {
    initComponents();

    solutionLength = new HasInteger() {
      @Override
      public Integer getValue() {
        return cboSolutionLength.getSelectedIndex() == 0
            ? null
            : cboSolutionLength.getSelectedIndex();
      }

      @Override
      public void setValue(int value) {
        cboSolutionLength.setSelectedIndex(value);
      }
    };
  }

  @Override
  public HasClickHandlers getOpenButton() {
    return openButton;
  }

  @Override
  public HasImageSelectedHandlers getImageSelector() {
    return imageSelector;
  }

  @Override
  public void indicateWorking() {
    SwingUtilities.invokeLater(() -> {
      btnOpen.setEnabled(false);
    });
  }

  @Override
  public void indicateNotWorking() {
    SwingUtilities.invokeLater(() -> {
      btnOpen.setEnabled(true);
    });
  }

  @Override
  public void setStatus(String status, double progress) {
    SwingUtilities.invokeLater(() -> {
      lblStatus.setText(status);
    });
  }

  @Override
  public void showImage(KamiImage rawImage) {
    BufferedJavaImage image = new BufferedJavaImage(rawImage);

    SwingUtilities.invokeLater(() -> {
      ((ImagePanel)pnlMainImage).setImage(image);
      pnlMainImage.repaint();
    });

  }

  @Override
  public void setSolution(KamiImage baseImage, SolutionGeometryList solution, PaletteList palette) {

  }

  @Override
  public HasClickHandlers getSolveButton() {
    return solveButton;
  }

  @Override
  public HasInteger getSolutionLengthController() {
    return solutionLength;
  }



  @Override
  public void showImageSelectionView() {



    fileChooser.setFileFilter(new FileFilter() {
      @Override
      public boolean accept(File f) {
        String fileName = f.getName().toLowerCase();

        return fileName.endsWith(".png")
            || fileName.endsWith(".jpg")
            || fileName.endsWith(".jpeg")
            || fileName.endsWith(".bmp")
            || f.isDirectory();
      }

      @Override
      public String getDescription() {
        return "Select an image file to open";
      }
    });

//    int returnCode = fileChooser.showDialog(this, "Open");
//
//    if (JFileChooser.APPROVE_OPTION == returnCode) {
//      File selectedFile = fileChooser.getSelectedFile();

      setStatus("Loading Image ...", -1);

      new Thread(() -> {
        try {
          BufferedImage image = ImageIO.read( // selectedFile);
              //new File("../kami-solver-core/src/test/resources/k2-pu-3-iphone7.PNG"));
              //new File("/Users/kguthrie/Downloads/IMG_4512.PNG"));
              //new File("/Users/kguthrie/Downloads/IMG_4553.PNG"));
              //new File("/Users/kguthrie/Desktop/IMG_4548_3.png"));
              new File("../kami-solver-core/src/test/resources/k2-p11_6-iphone7.PNG"));

          imageSelector.selectImage(new BufferedJavaImage(image).toKamiImage());
        }
        catch(IOException ex) {
          throw new RuntimeException("Failed to load image", ex);
        }
      }).start();
    //}
  }

  /**
   * This method is called from within the constructor to initialize the form.
   * WARNING: Do NOT modify this code. The content of this method is always
   * regenerated by the Form Editor.
   */
  @SuppressWarnings("unchecked")
  // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
  private void initComponents() {

    btnOpen = new javax.swing.JButton();
    pnlMainImage = new ImagePanel();
    lblStatus = new javax.swing.JLabel();
    btnSolve = new javax.swing.JButton();
    cboSolutionLength = new javax.swing.JComboBox<>();

    setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

    btnOpen.setText("Open");
    btnOpen.setToolTipText("Open");
    btnOpen.addMouseListener(new java.awt.event.MouseAdapter() {
      public void mouseClicked(java.awt.event.MouseEvent evt) {
        btnOpenMouseClicked(evt);
      }
    });

    javax.swing.GroupLayout pnlMainImageLayout = new javax.swing.GroupLayout(pnlMainImage);
    pnlMainImage.setLayout(pnlMainImageLayout);
    pnlMainImageLayout.setHorizontalGroup(
      pnlMainImageLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
      .addGap(0, 0, Short.MAX_VALUE)
    );
    pnlMainImageLayout.setVerticalGroup(
      pnlMainImageLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
      .addGap(0, 375, Short.MAX_VALUE)
    );

    btnSolve.setText("Solve");
    btnSolve.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        btnSolveActionPerformed(evt);
      }
    });

    cboSolutionLength.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Solution Length", "1 Move", "2 Moves", "3 Moves", "4 Moves", "5 Moves", "6 Moves", "7 Moves", "8 Moves", "9 Moves", "10 Moves", "11 Moves", "12 Moves", "13 Moves", "14 Moves", "15 Moves", "16 Moves", "17 Moves", "18 Moves", "19 Moves", "20 Moves", "1 Moves" }));

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
      layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
      .addGroup(layout.createSequentialGroup()
        .addContainerGap()
        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
          .addComponent(pnlMainImage, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
          .addGroup(layout.createSequentialGroup()
            .addComponent(btnOpen)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(btnSolve)
            .addGap(18, 18, 18)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
              .addComponent(lblStatus, javax.swing.GroupLayout.DEFAULT_SIZE, 462, Short.MAX_VALUE)
              .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(cboSolutionLength, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))))
        .addContainerGap())
    );
    layout.setVerticalGroup(
      layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
      .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
        .addContainerGap()
        .addComponent(pnlMainImage, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
          .addComponent(btnOpen)
          .addComponent(lblStatus)
          .addComponent(btnSolve)
          .addComponent(cboSolutionLength, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        .addContainerGap())
    );

    pack();
  }// </editor-fold>//GEN-END:initComponents

  private void btnOpenMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnOpenMouseClicked
    openButton.click();
  }//GEN-LAST:event_btnOpenMouseClicked

  private void btnSolveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSolveActionPerformed
    solveButton.click();
  }//GEN-LAST:event_btnSolveActionPerformed

  /**
   * @param args the command line arguments
   */
  public static void main(String args[]) {
    /* Set the Nimbus look and feel */
    //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
    /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
     */
    try {
      for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.
          getInstalledLookAndFeels()) {
        if ("Nimbus".equals(info.getName())) {
          javax.swing.UIManager.setLookAndFeel(info.getClassName());
          break;
        }
      }
    }
    catch (ClassNotFoundException ex) {
      java.util.logging.Logger.getLogger(KamiSolverMain.class.getName()).log(
          java.util.logging.Level.SEVERE, null, ex);
    }
    catch (InstantiationException ex) {
      java.util.logging.Logger.getLogger(KamiSolverMain.class.getName()).log(
          java.util.logging.Level.SEVERE, null, ex);
    }
    catch (IllegalAccessException ex) {
      java.util.logging.Logger.getLogger(KamiSolverMain.class.getName()).log(
          java.util.logging.Level.SEVERE, null, ex);
    }
    catch (javax.swing.UnsupportedLookAndFeelException ex) {
      java.util.logging.Logger.getLogger(KamiSolverMain.class.getName()).log(
          java.util.logging.Level.SEVERE, null, ex);
    }
    //</editor-fold>

    /* Create and display the form */
    java.awt.EventQueue.invokeLater(new Runnable() {
      public void run() {
        KamiSolverPresenter presenter = new KamiSolverPresenter();
        KamiSolverMain view = new KamiSolverMain();

        EventBus eventBus
            = new AsyncEventBus(Executors.newSingleThreadExecutor(), new SubscriberExceptionHandler() {
          @Override
          public void handleException(Throwable exception,
              SubscriberExceptionContext context) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
          }
        });

        presenter.bind(view, eventBus);

        view.setVisible(true);

        view.showImageSelectionView();
      }
    });
  }

  // Variables declaration - do not modify//GEN-BEGIN:variables
  private javax.swing.JButton btnOpen;
  private javax.swing.JButton btnSolve;
  private javax.swing.JComboBox<String> cboSolutionLength;
  private javax.swing.JLabel lblStatus;
  private javax.swing.JPanel pnlMainImage;
  // End of variables declaration//GEN-END:variables

  @Override
  public void showSolution() {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }
}
