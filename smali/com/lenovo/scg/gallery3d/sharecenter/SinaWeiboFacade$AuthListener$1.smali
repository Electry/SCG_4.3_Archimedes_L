.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;
.super Ljava/lang/Thread;
.source "SinaWeiboFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;->val$code:Ljava/lang/String;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getOAuth2(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Ljava/lang/String;)V

    .line 346
    return-void
.end method
