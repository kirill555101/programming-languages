procedure InitializeComponent;
    begin
        self.label2 := new System.Windows.Forms.Label();
        self.label3 := new System.Windows.Forms.Label();
        self.label5 := new System.Windows.Forms.Label();
        self.maskedTextBox1 := new System.Windows.Forms.MaskedTextBox();
        self.maskedTextBox2 := new System.Windows.Forms.MaskedTextBox();
        self.maskedTextBox3 := new System.Windows.Forms.MaskedTextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // label2
        // 
        self.label2.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label2.Location := new System.Drawing.Point(12, 11);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(100, 23);
        self.label2.TabIndex := 1;
        self.label2.Text := 'Фамилия';
        self.label2.Click += label2_Click;
        // 
        // label3
        // 
        self.label3.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label3.Location := new System.Drawing.Point(12, 54);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(100, 23);
        self.label3.TabIndex := 2;
        self.label3.Text := 'Имя';
        self.label3.Click += label3_Click;
        // 
        // label5
        // 
        self.label5.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label5.Location := new System.Drawing.Point(12, 100);
        self.label5.Name := 'label5';
        self.label5.Size := new System.Drawing.Size(100, 23);
        self.label5.TabIndex := 4;
        self.label5.Text := 'Телефон';
        self.label5.Click += label5_Click;
        // 
        // maskedTextBox1
        // 
        self.maskedTextBox1.Location := new System.Drawing.Point(118, 14);
        self.maskedTextBox1.Name := 'maskedTextBox1';
        self.maskedTextBox1.Size := new System.Drawing.Size(100, 20);
        self.maskedTextBox1.TabIndex := 5;
        // 
        // maskedTextBox2
        // 
        self.maskedTextBox2.Location := new System.Drawing.Point(118, 57);
        self.maskedTextBox2.Name := 'maskedTextBox2';
        self.maskedTextBox2.Size := new System.Drawing.Size(100, 20);
        self.maskedTextBox2.TabIndex := 6;
        // 
        // maskedTextBox3
        // 
        self.maskedTextBox3.Location := new System.Drawing.Point(118, 97);
        self.maskedTextBox3.Name := 'maskedTextBox3';
        self.maskedTextBox3.Size := new System.Drawing.Size(100, 20);
        self.maskedTextBox3.TabIndex := 7;
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(12, 143);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(86, 30);
        self.button1.TabIndex := 8;
        self.button1.Text := 'Добавить';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(143, 143);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(75, 30);
        self.button2.TabIndex := 9;
        self.button2.Text := 'Выход';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // Form2
        // 
        self.ClientSize := new System.Drawing.Size(301, 185);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.maskedTextBox3);
        self.Controls.Add(self.maskedTextBox2);
        self.Controls.Add(self.maskedTextBox1);
        self.Controls.Add(self.label5);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.label2);
        self.Name := 'Form2';
        self.Text := 'Добавление записей';
        self.Load += Form2_Load;
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
