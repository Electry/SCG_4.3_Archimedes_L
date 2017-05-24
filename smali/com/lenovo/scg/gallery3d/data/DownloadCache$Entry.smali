.class public Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field protected mId:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache;JLjava/io/File;)V
    .locals 2
    .param p2, "id"    # J
    .param p4, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->mId:J

    .line 271
    invoke-static {p4}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    .line 272
    return-void
.end method
