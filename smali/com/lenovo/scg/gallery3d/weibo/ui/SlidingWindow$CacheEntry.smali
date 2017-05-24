.class public Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
.super Ljava/lang/Object;
.source "SlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheEntry"
.end annotation


# instance fields
.field private contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

.field public index:I

.field public item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

.field public pos:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    return-object p1
.end method
