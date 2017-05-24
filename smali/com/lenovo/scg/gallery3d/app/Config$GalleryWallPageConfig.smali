.class public Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryWallPageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;


# instance fields
.field public slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    .local v0, "r":Landroid/content/res/Resources;
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .line 194
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const-class v1, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;

    .line 188
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$GalleryWallPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
