.class Lcom/lenovo/scg/gallery3d/edit/EditUtils$1;
.super Ljava/lang/Thread;
.source "EditUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/EditUtils;->deleteTempFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/EditUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/EditUtils;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/EditUtils$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/EditUtils$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    new-instance v2, Ljava/io/File;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/EditUtils;->FILEPATH:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/lenovo/scg/gallery3d/edit/EditUtils;->deleteFile(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->access$100(Lcom/lenovo/scg/gallery3d/edit/EditUtils;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
