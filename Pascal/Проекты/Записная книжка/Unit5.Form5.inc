procedure InitializeComponent;
    begin
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(71, 21);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(141, 61);
        self.button1.TabIndex := 0;
        self.button1.Text := 'Открыть записную книжку';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(72, 100);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(141, 61);
        self.button2.TabIndex := 1;
        self.button2.Text := 'Создать записную книжку';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // button3
        // 
        self.button3.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button3.Location := new System.Drawing.Point(71, 179);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(141, 61);
        self.button3.TabIndex := 2;
        self.button3.Text := 'Выход';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // Form5
        // 
        self.ClientSize := new System.Drawing.Size(284, 261);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Name := 'Form5';
        self.Text := 'Главное меню';
        self.ResumeLayout(false);
    end;
