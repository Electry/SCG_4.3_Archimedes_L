.class public interface abstract Lcom/lenovo/scg/gallery3d/app/GalleryApp;
.super Ljava/lang/Object;
.source "GalleryApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;
    }
.end annotation


# static fields
.field public static final DEFAULTPAGE_FILE:I = 0x3

.field public static final DEFAULTPAGE_TIME:I


# virtual methods
.method public abstract deleteFilterStack(I)V
.end method

.method public abstract getAndroidContext()Landroid/content/Context;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getCurrentBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;
.end method

.method public abstract getDefaultPage()I
.end method

.method public abstract getDownloadCache()Lcom/lenovo/scg/gallery3d/data/DownloadCache;
.end method

.method public abstract getEnableLocalTimePageAnimation()Z
.end method

.method public abstract getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;
.end method

.method public abstract getFilterStackIndex()I
.end method

.method public abstract getImageCacheService()Lcom/lenovo/scg/gallery3d/data/ImageCacheService;
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public abstract getPhotoViewAutoScreenRotated()Z
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getStitchingProgressManager()Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
.end method

.method public abstract getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;
.end method

.method public abstract isDoingEdit()Z
.end method

.method public abstract onPsersonCenterToggleListen()V
.end method

.method public abstract resetScaleBitmap(I)V
.end method

.method public abstract setDefaultPage(I)V
.end method

.method public abstract setDoingEdit(Z)V
.end method

.method public abstract setEnableLocalTimePageAnimation(Z)V
.end method

.method public abstract setFilterStack(Lcom/lenovo/scg/gallery3d/edit/FilterStack;)V
.end method

.method public abstract setPhotoViewAutoScreenRotate(Z)V
.end method

.method public abstract setScaleBitmap(Landroid/graphics/Bitmap;I)V
.end method
