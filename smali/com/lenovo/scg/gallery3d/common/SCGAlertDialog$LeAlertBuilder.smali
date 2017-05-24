.class Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "SCGAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeAlertBuilder"
.end annotation


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;Landroid/content/Context;)V
    .locals 3
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    .line 39
    invoke-direct {p0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "lv":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    invoke-super {p0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    .line 48
    return-void
.end method

.method private installContent()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v3, 0x7f100460

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, "line":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mContent:Landroid/view/View;

    const v3, 0x7f100461

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, "buttonlayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    iget-boolean v2, v2, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->isShowLine:Z

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->installContent()V

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method
