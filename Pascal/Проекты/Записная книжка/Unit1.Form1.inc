procedure InitializeComponent;
    begin
        self.dataGridView1 := new System.Windows.Forms.DataGridView();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.Column4 := new System.Windows.Forms.DataGridViewTextBoxColumn();
        self.Column1 := new System.Windows.Forms.DataGridViewTextBoxColumn();
        self.Column2 := new System.Windows.Forms.DataGridViewTextBoxColumn();
        self.Column3 := new System.Windows.Forms.DataGridViewTextBoxColumn();
        (System.ComponentModel.ISupportInitialize(self.dataGridView1)).BeginInit();
        self.SuspendLayout();
        // 
        // dataGridView1
        // 
        self.dataGridView1.AllowUserToAddRows := false;
        self.dataGridView1.AllowUserToDeleteRows := false;
        self.dataGridView1.AllowUserToResizeColumns := false;
        self.dataGridView1.AllowUserToResizeRows := false;
        self.dataGridView1.ColumnHeadersHeightSizeMode := System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
        self.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[4](self.Column4, self.Column1, self.Column2, self.Column3));
        self.dataGridView1.Location := new System.Drawing.Point(12, 12);
        self.dataGridView1.Name := 'dataGridView1';
        self.dataGridView1.ReadOnly := true;
        self.dataGridView1.RowHeadersVisible := false;
        self.dataGridView1.Size := new System.Drawing.Size(548, 401);
        self.dataGridView1.TabIndex := 0;
        self.dataGridView1.CellContentClick += dataGridView1_CellContentClick;
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(594, 27);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(159, 59);
        self.button1.TabIndex := 1;
        self.button1.Text := 'Добавить запись';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(594, 108);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(159, 64);
        self.button2.TabIndex := 2;
        self.button2.Text := 'Найти запись';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // button3
        // 
        self.button3.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button3.Location := new System.Drawing.Point(594, 195);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(159, 62);
        self.button3.TabIndex := 3;
        self.button3.Text := 'Назад';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // Column4
        // 
        self.Column4.HeaderText := 'Номер';
        self.Column4.Name := 'Column4';
        self.Column4.ReadOnly := true;
        self.Column4.Width := 53;
        // 
        // Column1
        // 
        self.Column1.HeaderText := 'Фамилия';
        self.Column1.Name := 'Column1';
        self.Column1.ReadOnly := true;
        self.Column1.Width := 158;
        // 
        // Column2
        // 
        self.Column2.HeaderText := 'Имя';
        self.Column2.Name := 'Column2';
        self.Column2.ReadOnly := true;
        self.Column2.Width := 158;
        // 
        // Column3
        // 
        self.Column3.HeaderText := 'Телефон';
        self.Column3.Name := 'Column3';
        self.Column3.ReadOnly := true;
        self.Column3.Width := 158;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(765, 425);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.dataGridView1);
        self.Name := 'Form1';
        self.Text := 'Записная книжка';
        self.Load += Form1_Load;
        (System.ComponentModel.ISupportInitialize(self.dataGridView1)).EndInit();
        self.ResumeLayout(false);
    end;
