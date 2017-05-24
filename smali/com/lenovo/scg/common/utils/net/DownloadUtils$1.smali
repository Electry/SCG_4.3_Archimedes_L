.class final Lcom/lenovo/scg/common/utils/net/DownloadUtils$1;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/utils/net/DownloadUtils;->dump(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/net/DownloadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/net/DownloadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 58
    return-void
.end method
