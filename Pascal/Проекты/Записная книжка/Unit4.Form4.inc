procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form4));
        self.button1 := new System.Windows.Forms.Button();
        self.label1 := new System.Windows.Forms.Label();
        self.pictureBox1 := new System.Windows.Forms.PictureBox();
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).BeginInit();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(324, 109);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(75, 28);
        self.button1.TabIndex := 0;
        self.button1.Text := 'ОК';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(112, 25);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(287, 66);
        self.label1.TabIndex := 1;
        self.label1.Text := 'Ошибка ввода. Для выхода из приложения нажмите кнопку "ОК".';
        // 
        // pictureBox1
        // 
        self.pictureBox1.Image := (System.Drawing.Image(resources.GetObject('pictureBox1.Image')));
        self.pictureBox1.Location := new System.Drawing.Point(12, 25);
        self.pictureBox1.Name := 'pictureBox1';
        self.pictureBox1.Size := new System.Drawing.Size(65, 66);
        self.pictureBox1.TabIndex := 2;
        self.pictureBox1.TabStop := false;
        // 
        // Form4
        // 
        self.BackColor := System.Drawing.Color.White;
        self.ClientSize := new System.Drawing.Size(422, 162);
        self.Controls.Add(self.pictureBox1);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.button1);
        self.Name := 'Form4';
        self.Text := 'Ошибка';
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).EndInit();
        self.ResumeLayout(false);
    end;
