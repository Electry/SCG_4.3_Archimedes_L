.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->onComplete(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;

.field final synthetic val$downloaded:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;->val$downloaded:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;->val$downloaded:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/SUS;->installAppExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)J

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method
