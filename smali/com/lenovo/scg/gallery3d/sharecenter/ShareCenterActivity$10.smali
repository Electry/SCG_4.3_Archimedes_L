.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;
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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->collapseSoftInputMethod()V

    .line 1207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->saveDraft()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$1600(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    .line 1210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->finish()V

    .line 1211
    return-void
.end method
