.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mPriority:I

    .line 223
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 519
    if-eqz p2, :cond_0

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 594
    # getter for: Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->access$000()Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;->build(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    # getter for: Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->access$000()Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;->build(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 496
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 497
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 342
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 323
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 355
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 291
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 283
    return-object p0
.end method

.method public setDefaults(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 512
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 515
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 367
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 384
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 385
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 386
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 414
    return-object p0
.end method

.method public setLights(III)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 456
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 457
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 458
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_0

    move v0, v1

    .line 459
    .local v0, "showLights":Z
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 461
    return-object p0

    .end local v0    # "showLights":Z
    :cond_0
    move v0, v2

    .line 458
    goto :goto_0

    .restart local v0    # "showLights":Z
    :cond_1
    move v1, v2

    .line 459
    goto :goto_1
.end method

.method public setNumber(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNumber:I

    .line 315
    return-object p0
.end method

.method public setOngoing(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 476
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 477
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 485
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setFlag(IZ)V

    .line 486
    return-object p0
.end method

.method public setPriority(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mPriority:I

    .line 539
    return-object p0
.end method

.method public setProgress(IIZ)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 331
    iput p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mProgressMax:I

    .line 332
    iput p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mProgress:I

    .line 333
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 334
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 259
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 275
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 423
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 435
    return-object p0
.end method

.method public setStyle(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 573
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->setBuilder(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V

    .line 578
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 305
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 395
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 405
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 406
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mUseChronometer:Z

    .line 247
    return-object p0
.end method

.method public setVibrate([J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 446
    return-object p0
.end method

.method public setWhen(J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 231
    return-object p0
.end method
