.class public Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;


# instance fields
.field public placeholderColor:I

.field public slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    .line 147
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0e0045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0e0046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0903c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotGap:I

    .line 151
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const-class v1, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;

    .line 139
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
