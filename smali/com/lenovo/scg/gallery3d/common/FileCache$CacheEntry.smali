.class public final Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/common/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field public contentUrl:Ljava/lang/String;

.field private id:J


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "contentUrl"    # Ljava/lang/String;
    .param p4, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;->id:J

    .line 69
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;->contentUrl:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/io/File;Lcom/lenovo/scg/gallery3d/common/FileCache$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/io/File;
    .param p5, "x3"    # Lcom/lenovo/scg/gallery3d/common/FileCache$1;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$CacheEntry;->id:J

    return-wide v0
.end method
