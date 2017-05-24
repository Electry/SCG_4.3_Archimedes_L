.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$11;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

.field final synthetic val$dialog:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$11;->val$dialog:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$11;->val$dialog:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->dismiss()V

    .line 1229
    return-void
.end method
