.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$2;
.super Ljava/lang/Object;
.source "MaterialMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->init_net_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$2;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$2;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->pop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->access$1400(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 642
    return-void
.end method
