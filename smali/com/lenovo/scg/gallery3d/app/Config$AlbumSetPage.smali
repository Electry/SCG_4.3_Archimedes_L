.class public Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;


# instance fields
.field public albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

.field public labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field public localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

.field public localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

.field public paddingBottom:I

.field public paddingTop:I

.field public placeholderColor:I

.field public slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0e0041

    const v6, 0x7f0904be

    const v5, 0x7f0904b9

    const v4, 0x7f0904ac

    const v3, 0x7f090471

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    .line 76
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0e0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotGap:I

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    .line 83
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->rowsLand:I

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    const v2, 0x7f0e0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->rowsPort:I

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotGap:I

    .line 89
    const v1, 0x7f0904aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    .line 90
    const v1, 0x7f0904ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->paddingBottom:I

    .line 92
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    .line 98
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 99
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    .line 100
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0d0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0d0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    .line 103
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0d0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    .line 106
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    const v2, 0x7f0e0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->rowsLand:I

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    const v2, 0x7f0e0044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->rowsPort:I

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    const v2, 0x7f0904ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotGap:I

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    const v2, 0x7f0904ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->xOffset:I

    .line 112
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->countOffset:I

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->bigFontSize:I

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->smallFontSize:I

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBigFontSize:I

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0904b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelSmallFontSize:I

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotGap:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->xOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/Config$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/Config$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-class v1, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    .line 68
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
