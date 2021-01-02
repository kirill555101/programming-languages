procedure InitializeComponent;
    begin
        self.button1 := new System.Windows.Forms.Button();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.label3 := new System.Windows.Forms.Label();
        self.label4 := new System.Windows.Forms.Label();
        self.textBox3 := new System.Windows.Forms.TextBox();
        self.textBox4 := new System.Windows.Forms.TextBox();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(273, 125);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(241, 49);
        self.button1.TabIndex := 0;
        self.button1.Text := 'Перевести';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // textBox1
        // 
        self.textBox1.Enabled := false;
        self.textBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox1.Location := new System.Drawing.Point(44, 213);
        self.textBox1.Multiline := true;
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(680, 223);
        self.textBox1.TabIndex := 1;
        self.textBox1.TextChanged += textBox1_TextChanged;
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(66, 65);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(108, 19);
        self.label1.TabIndex := 2;
        self.label1.Text := 'Перевести число';
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(282, 65);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(21, 19);
        self.label2.TabIndex := 6;
        self.label2.Text := 'из';
        self.label2.Click += label2_Click;
        // 
        // label3
        // 
        self.label3.Location := new System.Drawing.Point(431, 65);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(12, 19);
        self.label3.TabIndex := 7;
        self.label3.Text := 'в';
        self.label3.Click += label3_Click;
        // 
        // label4
        // 
        self.label4.Location := new System.Drawing.Point(574, 65);
        self.label4.Name := 'label4';
        self.label4.Size := new System.Drawing.Size(108, 19);
        self.label4.TabIndex := 8;
        self.label4.Text := 'систему счисления';
        // 
        // textBox3
        // 
        self.textBox3.Location := new System.Drawing.Point(322, 62);
        self.textBox3.Name := 'textBox3';
        self.textBox3.Size := new System.Drawing.Size(88, 20);
        self.textBox3.TabIndex := 10;
        // 
        // textBox4
        // 
        self.textBox4.Location := new System.Drawing.Point(180, 62);
        self.textBox4.Name := 'textBox4';
        self.textBox4.Size := new System.Drawing.Size(88, 20);
        self.textBox4.TabIndex := 11;
        // 
        // textBox2
        // 
        self.textBox2.Location := new System.Drawing.Point(465, 62);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(88, 20);
        self.textBox2.TabIndex := 12;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(784, 461);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.textBox4);
        self.Controls.Add(self.textBox3);
        self.Controls.Add(self.label4);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.button1);
        self.Name := 'Form1';
        self.Text := 'Перевод систем счисления';
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
