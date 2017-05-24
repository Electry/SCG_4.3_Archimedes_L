.class public abstract Lcn/jingling/lib/filters/GlobalFilter;
.super Lcn/jingling/lib/filters/Filter;
.source "GlobalFilter.java"


# static fields
.field private static DefaultSeekBarValue:I


# instance fields
.field protected mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mSeekBarNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x32

    sput v0, Lcn/jingling/lib/filters/GlobalFilter;->DefaultSeekBarValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/Filter;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/filters/GlobalFilter;->mSeekBarNumber:I

    .line 9
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public apply(Landroid/content/Context;[I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degrees"    # [I

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSeekBarValue()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcn/jingling/lib/filters/GlobalFilter;->DefaultSeekBarValue:I

    return v0
.end method

.method public getSeekBarNumber()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcn/jingling/lib/filters/GlobalFilter;->mSeekBarNumber:I

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/jingling/lib/filters/GlobalFilter;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/GlobalFilter;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method

.method protected setSeekBarNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 22
    iput p1, p0, Lcn/jingling/lib/filters/GlobalFilter;->mSeekBarNumber:I

    .line 23
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcn/jingling/lib/filters/GlobalFilter;->statisticEvent()V

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/GlobalFilter;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method
