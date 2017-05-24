.class Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$1;
.super Ljava/lang/Object;
.source "TencentShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->loginTencentWeibo()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 123
    return-void
.end method
