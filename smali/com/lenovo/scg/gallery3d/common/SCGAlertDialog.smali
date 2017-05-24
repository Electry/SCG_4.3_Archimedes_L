.class public Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
.super Ljava/lang/Object;
.source "SCGAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;
    }
.end annotation


# instance fields
.field isShowLine:Z

.field mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

.field mCancel:Landroid/widget/TextView;

.field mConfirm:Landroid/widget/TextView;

.field mContent:Landroid/view/View;

.field private mExistTitle:Z

.field mList:Landroid/widget/ListView;

.field mMessage:Landroid/widget/TextView;

.field mParent:Landroid/widget/LinearLayout;

.field mTitle:Landroid/widget/TextView;

.field mctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->isShowLine:Z

    .line 112
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f10045c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f10045e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f100462

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f1002ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f10045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mList:Landroid/widget/ListView;

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f10045d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mParent:Landroid/widget/LinearLayout;

    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mctx:Landroid/content/Context;

    .line 126
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mExistTitle:Z

    .line 127
    new-instance v1, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;-><init>(Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    .line 128
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dismiss()V

    .line 184
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setItem([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v2, 0x7f100366

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 190
    .local v0, "sc":Landroid/widget/ScrollView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mctx:Landroid/content/Context;

    const v4, 0x7f040181

    invoke-direct {v2, v3, v4, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;

    invoke-direct {v2, p0, p2}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    return-void
.end method

.method public setMessage(I)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 2
    .param p1, "res"    # I
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->isShowLine:Z

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->isShowLine:Z

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 1
    .param p1, "l"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 2
    .param p1, "res"    # I
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->isShowLine:Z

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->isShowLine:Z

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-object p0
.end method

.method public setScgTitle(I)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mExistTitle:Z

    .line 133
    return-object p0
.end method

.method public setView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mExistTitle:Z

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->show()Landroid/app/AlertDialog;

    .line 180
    return-void
.end method
