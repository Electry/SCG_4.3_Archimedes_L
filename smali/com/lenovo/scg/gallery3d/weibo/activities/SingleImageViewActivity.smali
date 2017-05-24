.class public Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;
.super Landroid/app/Activity;
.source "SingleImageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$loadImageAsyncTask;
    }
.end annotation


# static fields
.field public static final KEY_ACCESSTOKEN:Ljava/lang/String; = "accesstoken"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_IDS:Ljava/lang/String; = "ids"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field private static final MSG_REFRESH_IMAGE_SINGLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "panhui4_SingleImageViewActivity"

.field private static final VALUE_DEFAULT:I = -0x1


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mAccessTokenStr:Ljava/lang/String;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlipperView:Landroid/widget/ViewFlipper;

.field private mImageRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mName:Ljava/lang/String;

.field private mSize:I

.field private mStatusesIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 420
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mImageRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    return-void
.end method

.method private comment()V
    .locals 2

    .prologue
    .line 396
    const-string/jumbo v0, "panhui4_SingleImageViewActivity"

    const-string v1, "comment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mStatusesIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->configueIntentComment(J)V

    .line 401
    return-void
.end method

.method private configueIntentComment(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 406
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

.method private getIntentExtras()V
    .locals 5

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mUrls:Ljava/util/ArrayList;

    .line 336
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mStatusesIds:Ljava/util/ArrayList;

    .line 337
    const-string/jumbo v2, "panhui4_SingleImageViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mStatusesIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mContents:Ljava/util/ArrayList;

    .line 340
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 341
    .local v0, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mAccessTokenStr:Ljava/lang/String;

    .line 342
    const-string v2, "index"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mIndex:I

    .line 343
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mName:Ljava/lang/String;

    .line 344
    const-string/jumbo v2, "panhui4_SingleImageViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mSize:I

    .line 347
    const-string/jumbo v2, "panhui4_SingleImageViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method private getIntentForRepost(JLjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 414
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 415
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 418
    return-void
.end method

.method private initViews()V
    .locals 15

    .prologue
    .line 127
    const v13, 0x7f100a2b

    invoke-virtual {p0, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 128
    .local v8, "return_btn":Landroid/widget/Button;
    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v13, 0x7f100a4f

    invoke-virtual {p0, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 131
    .local v9, "save_btn":Landroid/widget/Button;
    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v13, 0x7f100a27

    invoke-virtual {p0, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 134
    .local v7, "repost_btn":Landroid/widget/Button;
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v13, 0x7f1009fb

    invoke-virtual {p0, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 137
    .local v0, "comment_btn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v13, Landroid/view/GestureDetector;

    invoke-direct {v13, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->detector:Landroid/view/GestureDetector;

    .line 154
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mImageRecords:Ljava/util/Map;

    .line 156
    const v13, 0x7f100a50

    invoke-virtual {p0, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ViewFlipper;

    iput-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    .line 157
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mSize:I

    if-ge v3, v13, :cond_0

    .line 158
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "contents":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v5, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v5, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xd

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v6, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    .local v4, "image":Landroid/widget/ImageView;
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 168
    .local v12, "url":Ljava/lang/String;
    invoke-direct {p0, v12, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->saveImageRecords(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 170
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v11, "text":Landroid/widget/TextView;
    const/16 v13, -0x100

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v2, "empty":Landroid/widget/TextView;
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v1, v11, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v13, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 183
    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$loadImageAsyncTask;

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v10, p0, v13, v4, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$loadImageAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 184
    .local v10, "task":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$loadImageAsyncTask;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/util/Set;

    invoke-virtual {v10, v13}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$loadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "contents":Landroid/widget/RelativeLayout;
    .end local v2    # "empty":Landroid/widget/TextView;
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v5    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "task":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$loadImageAsyncTask;
    .end local v11    # "text":Landroid/widget/TextView;
    .end local v12    # "url":Ljava/lang/String;
    :cond_0
    iget v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mIndex:I

    if-eqz v13, :cond_1

    .line 188
    const/4 v3, 0x0

    :goto_1
    iget v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mIndex:I

    if-ge v3, v13, :cond_1

    .line 189
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v13}, Landroid/widget/ViewFlipper;->showNext()V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    :cond_1
    return-void
.end method

.method private repost()V
    .locals 4

    .prologue
    .line 383
    const-string/jumbo v0, "panhui4_SingleImageViewActivity"

    const-string/jumbo v1, "repost"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mStatusesIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->getIntentForRepost(JLjava/lang/String;)V

    .line 392
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 351
    const-string/jumbo v0, "panhui4_SingleImageViewActivity"

    const-string/jumbo v1, "save"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    return-void
.end method

.method private saveImageRecords(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mImageRecords:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mImageRecords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    .local v0, "tmpv":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mImageRecords:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 314
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->finish()V

    goto :goto_0

    .line 318
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->save()V

    goto :goto_0

    .line 322
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->repost()V

    goto :goto_0

    .line 326
    :sswitch_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->comment()V

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x7f1009fb -> :sswitch_3
        0x7f100a27 -> :sswitch_2
        0x7f100a2b -> :sswitch_0
        0x7f100a4f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f0401ae

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->setContentView(I)V

    .line 111
    const-string/jumbo v0, "panhui4_SingleImageViewActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->getIntentExtras()V

    .line 115
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->initViews()V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "panhui4_SingleImageViewActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 269
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mSize:I

    if-gt v2, v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    const v2, 0x7f05004a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    const v2, 0x7f05004b

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    move v0, v1

    .line 294
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, -0x3d900000    # -60.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    const v2, 0x7f05004c

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    const v2, 0x7f05004d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    move v0, v1

    .line 303
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
