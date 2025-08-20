import { Box, Typography } from "@mui/material";
import { useTranslation } from "react-i18next";
import { useSignalR } from "@/hooks";

export const HomePage = () => {
  const { t } = useTranslation();
  const { status, userId } = useSignalR();

  return (
    <>
      <Typography variant="h4" gutterBottom>
        {t("pages.home.title")}
      </Typography>
      <Typography>{t("pages.home.subTitle")}</Typography>
      <Box style={{ padding: 8 }}>
        SignalR status: <b>{status}</b> <br />
        👤 userId: {userId}
      </Box>
    </>
  );
};
