.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->val$path:Ljava/lang/String;

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1402(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1400(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1502(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Ljava/lang/String;)Ljava/lang/String;

    .line 995
    const-string v0, "PhotoPage,onCreate,second init."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->val$data:Landroid/os/Bundle;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->secondInit(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/os/Bundle;)V

    .line 997
    return-void
.end method
