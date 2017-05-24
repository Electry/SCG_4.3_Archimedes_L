.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;
.super Ljava/lang/Thread;
.source "SinaShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;->val$code:Ljava/lang/String;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getOAuth2(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Ljava/lang/String;)V

    .line 967
    return-void
.end method
