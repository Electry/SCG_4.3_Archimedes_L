.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$1;
.super Ljava/lang/Object;
.source "SinaShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->loginSinaWeibo()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 184
    return-void
.end method
