procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.button4 := new System.Windows.Forms.Button();
        self.button5 := new System.Windows.Forms.Button();
        self.button6 := new System.Windows.Forms.Button();
        self.button7 := new System.Windows.Forms.Button();
        self.button8 := new System.Windows.Forms.Button();
        self.button9 := new System.Windows.Forms.Button();
        self.button10 := new System.Windows.Forms.Button();
        self.button11 := new System.Windows.Forms.Button();
        self.button12 := new System.Windows.Forms.Button();
        self.button14 := new System.Windows.Forms.Button();
        self.button15 := new System.Windows.Forms.Button();
        self.button13 := new System.Windows.Forms.Button();
        self.button16 := new System.Windows.Forms.Button();
        self.button17 := new System.Windows.Forms.Button();
        self.button18 := new System.Windows.Forms.Button();
        self.button19 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // textBox1
        // 
        self.textBox1.BackColor := System.Drawing.Color.Black;
        self.textBox1.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.textBox1.Enabled := false;
        self.textBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 26.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox1.ForeColor := System.Drawing.Color.White;
        self.textBox1.Location := new System.Drawing.Point(2, 10);
        self.textBox1.Name := 'textBox1';
        self.textBox1.RightToLeft := System.Windows.Forms.RightToLeft.No;
        self.textBox1.Size := new System.Drawing.Size(198, 40);
        self.textBox1.TabIndex := 0;
        self.textBox1.TextChanged += textBox1_TextChanged;
        // 
        // button1
        // 
        self.button1.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button1.BackgroundImageLayout := System.Windows.Forms.ImageLayout.None;
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.ForeColor := System.Drawing.Color.White;
        self.button1.Location := new System.Drawing.Point(2, 258);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(96, 45);
        self.button1.TabIndex := 1;
        self.button1.TabStop := false;
        self.button1.Text := '0';
        self.button1.UseVisualStyleBackColor := false;
        self.button1.Click += button1_Click;
        self.button1.KeyUp += button1_KeyUp;
        // 
        // button2
        // 
        self.button2.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.ForeColor := System.Drawing.Color.White;
        self.button2.Location := new System.Drawing.Point(2, 209);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(45, 45);
        self.button2.TabIndex := 2;
        self.button2.TabStop := false;
        self.button2.Text := '1';
        self.button2.UseVisualStyleBackColor := false;
        self.button2.Click += button2_Click;
        // 
        // button3
        // 
        self.button3.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button3.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button3.ForeColor := System.Drawing.Color.White;
        self.button3.Location := new System.Drawing.Point(53, 209);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(45, 45);
        self.button3.TabIndex := 3;
        self.button3.TabStop := false;
        self.button3.Text := '2';
        self.button3.UseVisualStyleBackColor := false;
        self.button3.Click += button3_Click;
        // 
        // button4
        // 
        self.button4.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button4.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button4.ForeColor := System.Drawing.Color.White;
        self.button4.Location := new System.Drawing.Point(104, 209);
        self.button4.Name := 'button4';
        self.button4.Size := new System.Drawing.Size(45, 45);
        self.button4.TabIndex := 4;
        self.button4.TabStop := false;
        self.button4.Text := '3';
        self.button4.UseVisualStyleBackColor := false;
        self.button4.Click += button4_Click;
        // 
        // button5
        // 
        self.button5.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button5.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button5.ForeColor := System.Drawing.Color.White;
        self.button5.Location := new System.Drawing.Point(2, 158);
        self.button5.Name := 'button5';
        self.button5.Size := new System.Drawing.Size(45, 45);
        self.button5.TabIndex := 5;
        self.button5.TabStop := false;
        self.button5.Text := '4';
        self.button5.UseVisualStyleBackColor := false;
        self.button5.Click += button5_Click;
        // 
        // button6
        // 
        self.button6.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button6.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button6.ForeColor := System.Drawing.Color.White;
        self.button6.Location := new System.Drawing.Point(53, 158);
        self.button6.Name := 'button6';
        self.button6.Size := new System.Drawing.Size(45, 45);
        self.button6.TabIndex := 6;
        self.button6.TabStop := false;
        self.button6.Text := '5';
        self.button6.UseVisualStyleBackColor := false;
        self.button6.Click += button6_Click;
        // 
        // button7
        // 
        self.button7.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button7.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button7.ForeColor := System.Drawing.Color.White;
        self.button7.Location := new System.Drawing.Point(104, 158);
        self.button7.Name := 'button7';
        self.button7.Size := new System.Drawing.Size(45, 45);
        self.button7.TabIndex := 7;
        self.button7.TabStop := false;
        self.button7.Text := '6';
        self.button7.UseVisualStyleBackColor := false;
        self.button7.Click += button7_Click;
        // 
        // button8
        // 
        self.button8.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button8.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button8.ForeColor := System.Drawing.Color.White;
        self.button8.Location := new System.Drawing.Point(2, 107);
        self.button8.Name := 'button8';
        self.button8.Size := new System.Drawing.Size(45, 45);
        self.button8.TabIndex := 8;
        self.button8.TabStop := false;
        self.button8.Text := '7';
        self.button8.UseVisualStyleBackColor := false;
        self.button8.Click += button8_Click;
        // 
        // button9
        // 
        self.button9.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button9.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button9.ForeColor := System.Drawing.Color.White;
        self.button9.Location := new System.Drawing.Point(53, 107);
        self.button9.Name := 'button9';
        self.button9.Size := new System.Drawing.Size(45, 45);
        self.button9.TabIndex := 9;
        self.button9.TabStop := false;
        self.button9.Text := '8';
        self.button9.UseVisualStyleBackColor := false;
        self.button9.Click += button9_Click;
        // 
        // button10
        // 
        self.button10.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button10.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button10.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button10.ForeColor := System.Drawing.Color.White;
        self.button10.Location := new System.Drawing.Point(104, 107);
        self.button10.Name := 'button10';
        self.button10.Size := new System.Drawing.Size(45, 45);
        self.button10.TabIndex := 10;
        self.button10.TabStop := false;
        self.button10.Text := '9';
        self.button10.UseVisualStyleBackColor := false;
        self.button10.Click += button10_Click;
        // 
        // button11
        // 
        self.button11.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button11.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(128)))), (System.Int32((System.Byte(0)))));
        self.button11.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button11.ForeColor := System.Drawing.Color.White;
        self.button11.Location := new System.Drawing.Point(155, 56);
        self.button11.Name := 'button11';
        self.button11.Size := new System.Drawing.Size(45, 45);
        self.button11.TabIndex := 11;
        self.button11.TabStop := false;
        self.button11.Text := '÷';
        self.button11.UseVisualStyleBackColor := false;
        self.button11.Click += button11_Click;
        // 
        // button12
        // 
        self.button12.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button12.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(128)))), (System.Int32((System.Byte(0)))));
        self.button12.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button12.ForeColor := System.Drawing.Color.White;
        self.button12.Location := new System.Drawing.Point(155, 107);
        self.button12.Name := 'button12';
        self.button12.Size := new System.Drawing.Size(45, 45);
        self.button12.TabIndex := 12;
        self.button12.TabStop := false;
        self.button12.Text := 'x';
        self.button12.UseVisualStyleBackColor := false;
        self.button12.Click += button12_Click;
        // 
        // button14
        // 
        self.button14.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button14.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(128)))), (System.Int32((System.Byte(0)))));
        self.button14.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button14.ForeColor := System.Drawing.Color.White;
        self.button14.Location := new System.Drawing.Point(155, 158);
        self.button14.Name := 'button14';
        self.button14.Size := new System.Drawing.Size(45, 45);
        self.button14.TabIndex := 13;
        self.button14.TabStop := false;
        self.button14.Text := '-';
        self.button14.UseVisualStyleBackColor := false;
        self.button14.Click += button14_Click;
        // 
        // button15
        // 
        self.button15.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button15.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(128)))), (System.Int32((System.Byte(0)))));
        self.button15.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button15.ForeColor := System.Drawing.Color.White;
        self.button15.Location := new System.Drawing.Point(155, 209);
        self.button15.Name := 'button15';
        self.button15.Size := new System.Drawing.Size(45, 45);
        self.button15.TabIndex := 14;
        self.button15.TabStop := false;
        self.button15.Text := '+';
        self.button15.UseVisualStyleBackColor := false;
        self.button15.Click += button15_Click;
        // 
        // button13
        // 
        self.button13.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button13.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(128)))), (System.Int32((System.Byte(0)))));
        self.button13.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button13.ForeColor := System.Drawing.Color.White;
        self.button13.Location := new System.Drawing.Point(155, 258);
        self.button13.Name := 'button13';
        self.button13.Size := new System.Drawing.Size(45, 45);
        self.button13.TabIndex := 15;
        self.button13.TabStop := false;
        self.button13.Text := '=';
        self.button13.UseVisualStyleBackColor := false;
        self.button13.Click += button13_Click;
        // 
        // button16
        // 
        self.button16.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button16.BackColor := System.Drawing.Color.Silver;
        self.button16.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button16.ForeColor := System.Drawing.Color.White;
        self.button16.Location := new System.Drawing.Point(2, 56);
        self.button16.Name := 'button16';
        self.button16.Size := new System.Drawing.Size(45, 45);
        self.button16.TabIndex := 16;
        self.button16.TabStop := false;
        self.button16.Text := 'С';
        self.button16.UseVisualStyleBackColor := false;
        self.button16.Click += button16_Click;
        // 
        // button17
        // 
        self.button17.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button17.BackColor := System.Drawing.Color.Silver;
        self.button17.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button17.ForeColor := System.Drawing.Color.White;
        self.button17.Location := new System.Drawing.Point(104, 56);
        self.button17.Name := 'button17';
        self.button17.Size := new System.Drawing.Size(45, 45);
        self.button17.TabIndex := 17;
        self.button17.TabStop := false;
        self.button17.Text := '√';
        self.button17.UseVisualStyleBackColor := false;
        self.button17.Click += button17_Click;
        // 
        // button18
        // 
        self.button18.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.button18.BackColor := System.Drawing.Color.Silver;
        self.button18.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button18.ForeColor := System.Drawing.Color.White;
        self.button18.Location := new System.Drawing.Point(53, 56);
        self.button18.Name := 'button18';
        self.button18.Size := new System.Drawing.Size(45, 45);
        self.button18.TabIndex := 18;
        self.button18.TabStop := false;
        self.button18.Text := '±';
        self.button18.UseVisualStyleBackColor := false;
        self.button18.Click += button18_Click;
        // 
        // button19
        // 
        self.button19.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))), (System.Int32((System.Byte(64)))));
        self.button19.Font := new System.Drawing.Font('Microsoft Sans Serif', 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button19.ForeColor := System.Drawing.Color.White;
        self.button19.Location := new System.Drawing.Point(104, 258);
        self.button19.Name := 'button19';
        self.button19.Size := new System.Drawing.Size(45, 45);
        self.button19.TabIndex := 20;
        self.button19.TabStop := false;
        self.button19.Text := ',';
        self.button19.UseVisualStyleBackColor := false;
        self.button19.Click += button19_Click;
        // 
        // Form1
        // 
        self.BackColor := System.Drawing.Color.Black;
        self.ClientSize := new System.Drawing.Size(203, 307);
        self.Controls.Add(self.button19);
        self.Controls.Add(self.button18);
        self.Controls.Add(self.button17);
        self.Controls.Add(self.button16);
        self.Controls.Add(self.button13);
        self.Controls.Add(self.button15);
        self.Controls.Add(self.button14);
        self.Controls.Add(self.button12);
        self.Controls.Add(self.button11);
        self.Controls.Add(self.button10);
        self.Controls.Add(self.button9);
        self.Controls.Add(self.button8);
        self.Controls.Add(self.button7);
        self.Controls.Add(self.button6);
        self.Controls.Add(self.button5);
        self.Controls.Add(self.button4);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.textBox1);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedToolWindow;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.Name := 'Form1';
        self.Text := 'Калькулятор';
        self.Load += Form1_Load;
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
