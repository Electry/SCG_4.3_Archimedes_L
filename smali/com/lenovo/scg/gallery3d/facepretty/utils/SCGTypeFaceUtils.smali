.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/SCGTypeFaceUtils;
.super Ljava/lang/Object;
.source "SCGTypeFaceUtils.java"


# instance fields
.field mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SCGTypeFaceUtils;->mTypeface:Landroid/graphics/Typeface;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/FZY1JF.TTF"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SCGTypeFaceUtils;->mTypeface:Landroid/graphics/Typeface;

    .line 22
    return-void
.end method


# virtual methods
.method public setFont(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "mView"    # Landroid/widget/TextView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SCGTypeFaceUtils;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SCGTypeFaceUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    :cond_0
    return-void
.end method
