.class public Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudSMSReceiver.java"


# static fields
.field static final smsuri:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isCloudURL(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sms"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "^.*http://(pim\\.lenovo\\.com/p|iocos\\.lenovows\\.com/v2/tiny)/.+$"

    .line 114
    .local v0, "reg":Ljava/lang/String;
    const-string v1, "^\\s*$"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v26, "HWJ"

    const-string v27, ">>>>>>>onReceive start"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v9, 0x0

    .line 39
    .local v9, "bundle":Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 41
    .local v15, "httpStr":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 42
    const-string v26, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v8, "body":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_2

    .line 47
    const-string/jumbo v26, "pdus"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/Object;

    move-object/from16 v22, v26

    check-cast v22, [Ljava/lang/Object;

    .line 50
    .local v22, "pdus":[Ljava/lang/Object;
    :try_start_0
    const-string v26, "android.telephony.SmsMessage"

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 51
    .local v14, "hideClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v6, v0, [Ljava/lang/Object;

    .line 52
    .local v6, "allmsg":[Ljava/lang/Object;
    const-string v26, "createFromPdu"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-class v29, [B

    aput-object v29, v27, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 53
    .local v11, "createMsgMethod":Ljava/lang/reflect/Method;
    const-string v26, "getDisplayMessageBody"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 54
    .local v19, "msgBodyMethod":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 55
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v26, v22, v16

    check-cast v26, [B

    check-cast v26, [B

    aput-object v26, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v11, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    aput-object v26, v6, v16

    .line 56
    const-string v26, "HWJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "allmsg[i] = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v6, v16

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 58
    :cond_0
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/Object;
    array-length v0, v7

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v12, v7, v17

    .line 59
    .local v12, "currentMessage":Ljava/lang/Object;
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v26, "HWJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "body.toString() = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 58
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 62
    .end local v6    # "allmsg":[Ljava/lang/Object;
    .end local v7    # "arr$":[Ljava/lang/Object;
    .end local v11    # "createMsgMethod":Ljava/lang/reflect/Method;
    .end local v12    # "currentMessage":Ljava/lang/Object;
    .end local v14    # "hideClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "i":I
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "msgBodyMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v13

    .line 63
    .local v13, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v13}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 74
    .end local v13    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 75
    .local v25, "smsBody":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSMSReceiver;->isCloudURL(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 76
    const-string v26, "http"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSMSReceiver;->abortBroadcast()V

    .line 79
    const-string v26, "HWJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "httpStr = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v26, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 82
    .local v20, "notiManager":Landroid/app/NotificationManager;
    new-instance v24, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const v27, 0x7f04007c

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 83
    .local v24, "remoteView":Landroid/widget/RemoteViews;
    const v26, 0x7f100326

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 84
    const v26, 0x7f100324

    const v27, 0x7f020448

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 86
    new-instance v21, Landroid/app/Notification;

    const v26, 0x7f020448

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0f0270

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 89
    .local v21, "notification":Landroid/app/Notification;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 90
    const v26, 0x7f020448

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 91
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 95
    new-instance v10, Landroid/content/Intent;

    const-class v26, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v10, "clickIntent":Landroid/content/Intent;
    const-string v26, "Sms receicer key"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v26, "Sms receicer shared url key"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/16 v26, 0x0

    const/high16 v27, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 101
    .local v23, "pendingInent":Landroid/app/PendingIntent;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 104
    const/16 v26, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    .end local v8    # "body":Ljava/lang/StringBuilder;
    .end local v10    # "clickIntent":Landroid/content/Intent;
    .end local v20    # "notiManager":Landroid/app/NotificationManager;
    .end local v21    # "notification":Landroid/app/Notification;
    .end local v22    # "pdus":[Ljava/lang/Object;
    .end local v23    # "pendingInent":Landroid/app/PendingIntent;
    .end local v24    # "remoteView":Landroid/widget/RemoteViews;
    .end local v25    # "smsBody":Ljava/lang/String;
    :cond_2
    const-string v26, "HWJ"

    const-string v27, ">>>>>>>onReceive end"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 64
    .restart local v8    # "body":Ljava/lang/StringBuilder;
    .restart local v22    # "pdus":[Ljava/lang/Object;
    :catch_1
    move-exception v13

    .line 65
    .local v13, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v13}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_2

    .line 66
    .end local v13    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v13

    .line 67
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 68
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v13

    .line 69
    .local v13, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v13}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 70
    .end local v13    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v13

    .line 71
    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2
.end method
