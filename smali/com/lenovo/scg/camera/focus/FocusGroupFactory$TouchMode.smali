.class public final enum Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;
.super Ljava/lang/Enum;
.source "FocusGroupFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

.field public static final enum TM_DO_NOTHING:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

.field public static final enum TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

.field public static final enum TM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    const-string v1, "TM_Lock"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .line 62
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    const-string v1, "TM_Focus"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .line 63
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    const-string v1, "TM_DO_NOTHING"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_DO_NOTHING:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_Focus:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->TM_DO_NOTHING:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    return-object v0
.end method
