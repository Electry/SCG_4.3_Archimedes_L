.class Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/TrimVideo;->trimVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

.field final synthetic val$mSrcFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/TrimVideo;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->val$mSrcFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->val$mSrcFile:Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    # getter for: Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->access$400(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    # getter for: Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->access$500(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    # getter for: Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->access$600(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->startTrim(Ljava/io/File;Ljava/io/File;II)V

    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    # getter for: Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->access$400(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    # getter for: Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->access$700(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils;->insertContent(Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;->this$0:Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    # getter for: Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->access$300(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3$1;-><init>(Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
