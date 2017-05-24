.class public final Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListPerson;
.super Ljava/lang/Object;
.source "WeiboProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeListPerson"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final NICKNAME:Ljava/lang/String; = "nick"

.field public static final PIC1:Ljava/lang/String; = "data1"

.field public static final PIC2:Ljava/lang/String; = "data2"

.field public static final PIC3:Ljava/lang/String; = "data3"

.field public static final PIC4:Ljava/lang/String; = "data4"

.field public static final PIC5:Ljava/lang/String; = "data5"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SUIDS:Ljava/lang/String; = "data6"

.field public static final TABLE_NAME:Ljava/lang/String; = "homelist_person"

.field public static final UUID:Ljava/lang/String; = "user_uid"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "homelist_person"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListPerson;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
