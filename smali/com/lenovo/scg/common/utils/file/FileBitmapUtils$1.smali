.class Lcom/lenovo/scg/common/utils/file/FileBitmapUtils$1;
.super Ljava/lang/Thread;
.source "FileBitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->deleteTempFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils$1;->this$0:Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Ljava/io/File;

    # getter for: Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->FILEPATH:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->deleteFile(Ljava/io/File;)V
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->access$100(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
