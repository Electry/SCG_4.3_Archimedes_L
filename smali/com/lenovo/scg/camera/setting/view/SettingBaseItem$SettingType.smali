.class public final enum Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;
.super Ljava/lang/Enum;
.source "SettingBaseItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_ABOUT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_PRINT_TIME:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_SUPER_LIGHT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

.field public static final enum TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_FLASH"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 44
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_SMART"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 48
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_TAKE_PIC_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 52
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_PIC_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 56
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_PRINT_TIME"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PRINT_TIME:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 60
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_ABOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_ABOUT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 64
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_SHUTTER_SOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 69
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_SUPER_LIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SUPER_LIGHT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 74
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_VIDEO_TYPE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 79
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_VIDEO_SIZE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 84
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const-string v1, "TYPE_GPS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PRINT_TIME:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_ABOUT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SUPER_LIGHT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->$VALUES:[Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    return-object v0
.end method
