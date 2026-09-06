import { useBackendStrict } from 'tgui/backend';
import { Button, LabeledList, Section, Stack } from 'tgui-core/components';

export const SubtabIdentityDownstreamPaneLeft = (props) => {
  // Suggested format:
  // return (
  //   <>
  //     <Stack.Item>
  //       <MyCardHere />
  //     </Stack.Item>
  //     <Stack.Item>
  //       <MyCardHere2 />
  //     </Stack.Item>
  //   </>
  // )

  return (
    <Stack.Item>
      <PrefBadges />
    </Stack.Item>
  );
};

export const SubtabIdentityDownstreamPaneRight = (props) => {
  // Suggested format:
  // return (
  //   <>
  //     <Stack.Item>
  //       <MyCardHere />
  //     </Stack.Item>
  //     <Stack.Item>
  //       <MyCardHere2 />
  //     </Stack.Item>
  //   </>
  // )

  return null;
};

type PrefBadgesData = {
  badge_gng: string;
  badge_vore: string;
  badge_willing: string;
  badge_sexuality: string;
  badge_erp: string;
  badge_lean: string;
  badge_type: string;
};

const PrefBadges = (props) => {
  const { act, data } = useBackendStrict<PrefBadgesData>();
  const {
    badge_gng,
    badge_vore,
    badge_willing,
    badge_sexuality,
    badge_erp,
    badge_lean,
    badge_type,
  } = data;
  return (
    <Section title="Pref Badges">
      <LabeledList>
        <LabeledList.Item label="Grab and Gulp">
          <Button fluid onClick={() => act('choose_grab_and_gulp')}>
            {badge_gng || 'Unset'}
          </Button>
        </LabeledList.Item>
        <LabeledList.Item label="Digest/Absorb/Endo">
          <Button fluid onClick={() => act('choose_vore_pref')}>
            {badge_vore || 'Unset'}
          </Button>
        </LabeledList.Item>
        <LabeledList.Item label="Willingness">
          <Button fluid onClick={() => act('choose_willingness')}>
            {badge_willing || 'Unset'}
          </Button>
        </LabeledList.Item>
        <LabeledList.Item label="Scene Partner Pref">
          <Button fluid onClick={() => act('choose_sexuality')}>
            {badge_sexuality || 'Unset'}
          </Button>
        </LabeledList.Item>
        <LabeledList.Item label="Allow non-vore ERP">
          <Button fluid onClick={() => act('choose_erp_pref')}>
            {badge_erp || 'Unset'}
          </Button>
        </LabeledList.Item>
        <LabeledList.Item label="Pred/Prey lean">
          <Button fluid onClick={() => act('choose_vore_lean')}>
            {badge_lean || 'Unset'}
          </Button>
        </LabeledList.Item>
        <LabeledList.Item label="Vore Methods">
          <Button fluid onClick={() => act('choose_vore_type')}>
            {badge_type || 'Unset'}
          </Button>
        </LabeledList.Item>
      </LabeledList>
    </Section>
  );
};
