procedure InitializeComponent;
    begin
        self.button2 := new System.Windows.Forms.Button();
        self.button1 := new System.Windows.Forms.Button();
        self.maskedTextBox1 := new System.Windows.Forms.MaskedTextBox();
        self.button3 := new System.Windows.Forms.Button();
        self.label1 := new System.Windows.Forms.Label();
        self.SuspendLayout();
        // 
        // button2
        // 
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(208, 127);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(79, 29);
        self.button2.TabIndex := 17;
        self.button2.Text := 'Выход';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(12, 127);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(76, 29);
        self.button1.TabIndex := 16;
        self.button1.Text := 'Найти';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // maskedTextBox1
        // 
        self.maskedTextBox1.Location := new System.Drawing.Point(85, 76);
        self.maskedTextBox1.Name := 'maskedTextBox1';
        self.maskedTextBox1.Size := new System.Drawing.Size(131, 20);
        self.maskedTextBox1.TabIndex := 13;
        self.maskedTextBox1.MaskInputRejected += maskedTextBox1_MaskInputRejected;
        // 
        // button3
        // 
        self.button3.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button3.Location := new System.Drawing.Point(94, 127);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(108, 29);
        self.button3.TabIndex := 18;
        self.button3.Text := 'Следующий';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(49, 22);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(206, 34);
        self.label1.TabIndex := 19;
        self.label1.Text := 'Введите поисковый запрос';
        // 
        // Form3
        // 
        self.ClientSize := new System.Drawing.Size(299, 170);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.maskedTextBox1);
        self.Name := 'Form3';
        self.Text := 'Поиск записей';
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
