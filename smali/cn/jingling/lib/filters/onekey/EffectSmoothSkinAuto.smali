.class public Lcn/jingling/lib/filters/onekey/EffectSmoothSkinAuto;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "EffectSmoothSkinAuto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/EffectSmoothSkinAuto;->statisticEvent()V

    .line 13
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->effectSmoothSkin(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 14
    return-object p2
.end method
