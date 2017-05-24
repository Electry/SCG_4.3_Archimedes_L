.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Action;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplJellybean;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplIceCreamSandwich;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplHoneycomb;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplBase;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 153
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 155
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplIceCreamSandwich;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 156
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 157
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 159
    :cond_2
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    return-void
.end method

.method static synthetic access$000()Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;->IMPL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
