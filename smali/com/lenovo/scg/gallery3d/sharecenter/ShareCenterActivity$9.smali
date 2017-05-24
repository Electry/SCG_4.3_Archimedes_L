.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$9;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->onClick(Landroid/view/View;)V
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
    .line 981
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->saveInputStrings()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$1400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    .line 986
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$1500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 987
    return-void
.end method
