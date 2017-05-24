.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
.super Landroid/widget/BaseAdapter;
.source "MaterialMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetNotCon"
.end annotation


# instance fields
.field private canButton:Landroid/widget/Button;

.field img1:Landroid/widget/ImageView;

.field img2:Landroid/widget/ImageView;

.field private loginButton:Landroid/widget/Button;

.field private pop:Landroid/widget/PopupWindow;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dissmiss()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 651
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 581
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 587
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 593
    if-nez p2, :cond_0

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 595
    const v0, 0x7f100670

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->img1:Landroid/widget/ImageView;

    .line 596
    const v0, 0x7f100671

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->img1:Landroid/widget/ImageView;

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->init_net_dialog()V

    .line 599
    return-object p2
.end method

.method public init_net_dialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 610
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400fa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 611
    .local v0, "layout":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    .line 612
    const v1, 0x7f10066d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->loginButton:Landroid/widget/Button;

    .line 613
    const v1, 0x7f10066e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->canButton:Landroid/widget/Button;

    .line 614
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 618
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 619
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->img1:Landroid/widget/ImageView;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 620
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->loginButton:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->canButton:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    return-void
.end method
