.class public interface abstract Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlideshowSource"
.end annotation


# virtual methods
.method public abstract addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
.end method

.method public abstract findItemIndex(Lcom/lenovo/scg/gallery3d/data/Path;I)I
.end method

.method public abstract getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
.end method

.method public abstract reload()J
.end method

.method public abstract removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
.end method
