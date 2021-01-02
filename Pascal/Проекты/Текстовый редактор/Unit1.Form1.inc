procedure InitializeComponent;
    begin
        self.components := new System.ComponentModel.Container();
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.menuStrip1 := new System.Windows.Forms.MenuStrip();
        self.toolStripMenuItem1 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem3 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem4 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem8 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem15 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem17 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem2 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem10 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem11 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem12 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem16 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem9 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem14 := new System.Windows.Forms.ToolStripMenuItem();
        self.richTextBox1 := new System.Windows.Forms.RichTextBox();
        self.contextMenuStrip1 := new System.Windows.Forms.ContextMenuStrip(self.components);
        self.toolStripMenuItem5 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem6 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem7 := new System.Windows.Forms.ToolStripMenuItem();
        self.openFileDialog1 := new System.Windows.Forms.OpenFileDialog();
        self.saveFileDialog1 := new System.Windows.Forms.SaveFileDialog();
        self.fontDialog1 := new System.Windows.Forms.FontDialog();
        self.printDialog1 := new System.Windows.Forms.PrintDialog();
        self.toolStripMenuItem18 := new System.Windows.Forms.ToolStripMenuItem();
        self.menuStrip1.SuspendLayout();
        self.contextMenuStrip1.SuspendLayout();
        self.SuspendLayout();
        // 
        // menuStrip1
        // 
        self.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[3](self.toolStripMenuItem1, self.toolStripMenuItem2, self.toolStripMenuItem9));
        self.menuStrip1.Location := new System.Drawing.Point(0, 0);
        self.menuStrip1.Name := 'menuStrip1';
        self.menuStrip1.Size := new System.Drawing.Size(637, 24);
        self.menuStrip1.TabIndex := 0;
        self.menuStrip1.Text := 'menuStrip1';
        // 
        // toolStripMenuItem1
        // 
        self.toolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[5](self.toolStripMenuItem3, self.toolStripMenuItem4, self.toolStripMenuItem8, self.toolStripMenuItem15, self.toolStripMenuItem17));
        self.toolStripMenuItem1.Name := 'toolStripMenuItem1';
        self.toolStripMenuItem1.Size := new System.Drawing.Size(48, 20);
        self.toolStripMenuItem1.Text := 'Файл';
        self.toolStripMenuItem1.Click += toolStripMenuItem1_Click;
        // 
        // toolStripMenuItem3
        // 
        self.toolStripMenuItem3.Name := 'toolStripMenuItem3';
        self.toolStripMenuItem3.Size := new System.Drawing.Size(162, 22);
        self.toolStripMenuItem3.Text := 'Открыть...';
        self.toolStripMenuItem3.Click += toolStripMenuItem3_Click;
        // 
        // toolStripMenuItem4
        // 
        self.toolStripMenuItem4.Name := 'toolStripMenuItem4';
        self.toolStripMenuItem4.Size := new System.Drawing.Size(162, 22);
        self.toolStripMenuItem4.Text := 'Сохранить';
        self.toolStripMenuItem4.Click += toolStripMenuItem4_Click;
        // 
        // toolStripMenuItem8
        // 
        self.toolStripMenuItem8.Name := 'toolStripMenuItem8';
        self.toolStripMenuItem8.Size := new System.Drawing.Size(162, 22);
        self.toolStripMenuItem8.Text := 'Сохранить как...';
        self.toolStripMenuItem8.Click += toolStripMenuItem8_Click;
        // 
        // toolStripMenuItem15
        // 
        self.toolStripMenuItem15.Name := 'toolStripMenuItem15';
        self.toolStripMenuItem15.Size := new System.Drawing.Size(162, 22);
        self.toolStripMenuItem15.Text := 'Печать...';
        self.toolStripMenuItem15.Click += toolStripMenuItem15_Click;
        // 
        // toolStripMenuItem17
        // 
        self.toolStripMenuItem17.Name := 'toolStripMenuItem17';
        self.toolStripMenuItem17.Size := new System.Drawing.Size(162, 22);
        self.toolStripMenuItem17.Text := 'Выход';
        self.toolStripMenuItem17.Click += toolStripMenuItem17_Click;
        // 
        // toolStripMenuItem2
        // 
        self.toolStripMenuItem2.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[4](self.toolStripMenuItem10, self.toolStripMenuItem11, self.toolStripMenuItem12, self.toolStripMenuItem16));
        self.toolStripMenuItem2.Name := 'toolStripMenuItem2';
        self.toolStripMenuItem2.Size := new System.Drawing.Size(59, 20);
        self.toolStripMenuItem2.Text := 'Правка';
        // 
        // toolStripMenuItem10
        // 
        self.toolStripMenuItem10.Name := 'toolStripMenuItem10';
        self.toolStripMenuItem10.Size := new System.Drawing.Size(145, 22);
        self.toolStripMenuItem10.Text := 'Вырезать';
        self.toolStripMenuItem10.Click += toolStripMenuItem10_Click;
        // 
        // toolStripMenuItem11
        // 
        self.toolStripMenuItem11.Name := 'toolStripMenuItem11';
        self.toolStripMenuItem11.Size := new System.Drawing.Size(145, 22);
        self.toolStripMenuItem11.Text := 'Копировать';
        self.toolStripMenuItem11.Click += toolStripMenuItem11_Click;
        // 
        // toolStripMenuItem12
        // 
        self.toolStripMenuItem12.Name := 'toolStripMenuItem12';
        self.toolStripMenuItem12.Size := new System.Drawing.Size(145, 22);
        self.toolStripMenuItem12.Text := 'Вставить';
        self.toolStripMenuItem12.Click += toolStripMenuItem12_Click;
        // 
        // toolStripMenuItem16
        // 
        self.toolStripMenuItem16.Name := 'toolStripMenuItem16';
        self.toolStripMenuItem16.Size := new System.Drawing.Size(145, 22);
        self.toolStripMenuItem16.Text := 'Время и дата';
        self.toolStripMenuItem16.Click += toolStripMenuItem16_Click;
        // 
        // toolStripMenuItem9
        // 
        self.toolStripMenuItem9.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[1](self.toolStripMenuItem14));
        self.toolStripMenuItem9.Name := 'toolStripMenuItem9';
        self.toolStripMenuItem9.Size := new System.Drawing.Size(62, 20);
        self.toolStripMenuItem9.Text := 'Формат';
        // 
        // toolStripMenuItem14
        // 
        self.toolStripMenuItem14.Name := 'toolStripMenuItem14';
        self.toolStripMenuItem14.Size := new System.Drawing.Size(122, 22);
        self.toolStripMenuItem14.Text := 'Шрифт...';
        self.toolStripMenuItem14.Click += toolStripMenuItem14_Click;
        // 
        // richTextBox1
        // 
        self.richTextBox1.ContextMenuStrip := self.contextMenuStrip1;
        self.richTextBox1.Dock := System.Windows.Forms.DockStyle.Fill;
        self.richTextBox1.Font := new System.Drawing.Font('Consolas', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(0)));
        self.richTextBox1.Location := new System.Drawing.Point(0, 24);
        self.richTextBox1.Name := 'richTextBox1';
        self.richTextBox1.Size := new System.Drawing.Size(637, 386);
        self.richTextBox1.TabIndex := 1;
        self.richTextBox1.Text := '';
        // 
        // contextMenuStrip1
        // 
        self.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[4](self.toolStripMenuItem5, self.toolStripMenuItem6, self.toolStripMenuItem7, self.toolStripMenuItem18));
        self.contextMenuStrip1.Name := 'contextMenuStrip1';
        self.contextMenuStrip1.Size := new System.Drawing.Size(153, 114);
        // 
        // toolStripMenuItem5
        // 
        self.toolStripMenuItem5.Name := 'toolStripMenuItem5';
        self.toolStripMenuItem5.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem5.Text := 'Вырезать';
        self.toolStripMenuItem5.Click += toolStripMenuItem5_Click;
        // 
        // toolStripMenuItem6
        // 
        self.toolStripMenuItem6.Name := 'toolStripMenuItem6';
        self.toolStripMenuItem6.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem6.Text := 'Копировать';
        self.toolStripMenuItem6.Click += toolStripMenuItem6_Click;
        // 
        // toolStripMenuItem7
        // 
        self.toolStripMenuItem7.Name := 'toolStripMenuItem7';
        self.toolStripMenuItem7.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem7.Text := 'Вставить';
        self.toolStripMenuItem7.Click += toolStripMenuItem7_Click;
        // 
        // openFileDialog1
        // 
        self.openFileDialog1.FileName := 'openFileDialog1';
        // 
        // fontDialog1
        // 
        self.fontDialog1.Apply += fontDialog1_Apply;
        // 
        // printDialog1
        // 
        self.printDialog1.UseEXDialog := true;
        // 
        // toolStripMenuItem18
        // 
        self.toolStripMenuItem18.Name := 'toolStripMenuItem18';
        self.toolStripMenuItem18.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem18.Text := 'Выделить все';
        self.toolStripMenuItem18.Click += toolStripMenuItem18_Click;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(637, 410);
        self.Controls.Add(self.richTextBox1);
        self.Controls.Add(self.menuStrip1);
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MainMenuStrip := self.menuStrip1;
        self.Name := 'Form1';
        self.Text := 'Текстовый редактор';
        self.Load += Form1_Load;
        self.menuStrip1.ResumeLayout(false);
        self.menuStrip1.PerformLayout();
        self.contextMenuStrip1.ResumeLayout(false);
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
