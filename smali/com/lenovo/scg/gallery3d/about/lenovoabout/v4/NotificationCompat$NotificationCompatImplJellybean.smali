.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 21
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .prologue
    .line 116
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mProgressMax:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mPriority:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 121
    .local v1, "jbBuilder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;

    .line 122
    .local v18, "action":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;->icon:I

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 124
    .end local v18    # "action":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    if-eqz v2, :cond_1

    .line 125
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 126
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;

    .line 127
    .local v20, "style":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 147
    .end local v20    # "style":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 131
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 132
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;

    .line 133
    .local v20, "style":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 137
    .end local v20    # "style":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_1

    .line 138
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mStyle:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;

    .line 139
    .local v20, "style":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
