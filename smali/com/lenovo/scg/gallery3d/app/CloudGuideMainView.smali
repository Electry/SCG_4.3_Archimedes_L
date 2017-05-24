.class public Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;
.super Landroid/app/Activity;
.source "CloudGuideMainView.java"


# static fields
.field public static final FIRST_INIT_SHOW_CLOUD_GUIDE:Ljava/lang/String; = "FIRST_INIT_SHOW_CLOUD_GUIDE"


# instance fields
.field private mBmpBkg:Landroid/graphics/Bitmap;

.field private mIsFirstInitShowUserGuide:Z

.field private mWelcome:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mWelcome:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mIsFirstInitShowUserGuide:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mIsFirstInitShowUserGuide:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FIRST_INIT_SHOW_CLOUD_GUIDE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mIsFirstInitShowUserGuide:Z

    .line 32
    const v1, 0x7f040074

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->setContentView(I)V

    .line 34
    const v1, 0x7f10030e

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mWelcome:Landroid/view/View;

    .line 35
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mWelcome:Landroid/view/View;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;-><init>(Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020432

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    .line 50
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52
    .local v0, "drBkg":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mWelcome:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mWelcome:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mBmpBkg:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 77
    return-void
.end method
